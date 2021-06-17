#include "state.h"

using namespace std;

void RegFile::add(mlir::Value v, ValueTy &&t) {
  for (auto &itm: m) {
    if (itm.first == v) {
      itm.second = std::move(t);
      return;
    }
  }
  m.emplace_back(v, std::move(t));
}

bool RegFile::contains(mlir::Value v) const {
  for (auto &[a, b]: m) {
    if (a == v)
      return true;
  }
  return false;
}


llvm::raw_ostream& operator<<(llvm::raw_ostream& os, State &s) {
  for (auto itm: s.regs) {
    os << "Register: " << itm.first;
    os << "Value: ";
    visit(ValuePrinter(&os), itm.second);
  }
  return os;
}

pair<z3::expr, vector<z3::expr>> State::refines(const State &src) {
  // TODO: encode the final memory
  auto [refines, idx] = retValue.refines(src.retValue);
  return {move(refines), {idx}};
}
import src.Beth.Beth
import src.SoloPuedoIrmeDeAventurasLosLunesException.SoloPuedoIrmeDeAventurasLosLunesException

class Summer inherits Beth {
  override method irseDeAventurasCon(unRick) {
    if (self.esLunes()) {
      super(unRick)
    } else {
      throw new SoloPuedoIrmeDeAventurasLosLunesException()
    }
  }

  method esLunes() {
    return new Date().dayOfWeek() == "monday"
  }
}

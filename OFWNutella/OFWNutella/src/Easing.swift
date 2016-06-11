//
//  Easing.swift
//  OFWNutella
//
//  Created by apoes on 6/10/16.
//  Copyright © 2016 apoes. All rights reserved.
//

import Foundation

func EaseLinear(p: Double) -> Double {
  return p
}

func EaseInQuadratic(p: Double) -> Double {
  return p * p
}

func EaseOutQuadratic(p: Double) -> Double {
  return -(p * (p - 2))
}

func EaseInOutQuadratic(p: Double) -> Double {
  if (p < 0.5) {
    return 2 * p * p
  } else {
    return (-2 * p * p) + (4 * p) - 1
  }
}

func EaseInCubic(p: Double) -> Double {
  return p * p * p
}

func EaseOutCubic(p: Double) -> Double {
  let f = (p - 1)
  return f * f * f + 1
}

func EaseInOutCubic(p: Double) -> Double {
  if (p < 0.5) {
    return 4 * p * p * p
  } else {
    let f = ((2 * p) - 2)
    return 0.5 * f * f * f + 1
  }
}

func EaseInQuartic(p: Double) -> Double {
  return p * p * p * p
}

func EaseOutQuartic(p: Double) -> Double {
  let f = (p - 1)
  return f * f * f * (1 - p) + 1
}

func EaseInOutQuartic(p: Double) -> Double {
  if (p < 0.5) {
    return 8 * p * p * p * p
  } else {
    let f = (p - 1)
    return -8 * f * f * f * f + 1
  }
}

func EaseInQuintic(p: Double) -> Double {
  return p * p * p * p * p
}

func EaseOutQuintic(p: Double) -> Double {
  let f = (p - 1)
  return f * f * f * f * f + 1
}

func EaseInOutQuintic(p: Double) -> Double {
  if (p < 0.5) {
    return 16 * p * p * p * p * p
  } else {
    let f = ((2 * p) - 2)
    return  0.5 * f * f * f * f * f + 1
  }
}

func EaseInExponential(p: Double) -> Double {
  return (p > 0.0) ? pow(2, 10 * (p - 1)) : p
}

func EaseOutExponential(p: Double) -> Double {
  return (p > 0.0) ? 1 - pow(2, -10 * p) : p
}

func EaseInOutExponential(p: Double) -> Double {
  if (p > 0.0 || p < 1.0) {
    if (p < 0.5) {
      return 0.5 * pow(2, (20 * p) - 10)
    } else {
      return -0.5 * pow(2, (-20 * p) + 10) + 1
    }
  }
  return p
}

func EaseInElastic(p: Double) -> Double {
  return sin(13 * M_PI_2 * p) * pow(2, 10 * (p - 1))
}

func EaseOutElastic(p: Double) -> Double {
  return sin(-13 * M_PI_2 * (p + 1)) * pow(2, -10 * p) + 1
}

func EaseInOutElastic(p: Double) -> Double {
  if(p < 0.5) {
    return 0.5 * sin(13 * M_PI_2 * (2 * p)) * pow(2, 10 * ((2 * p) - 1))
  } else {
    return 0.5 * (sin(-13 * M_PI_2 * ((2 * p - 1) + 1)) * pow(2, -10 * (2 * p - 1)) + 2)
  }
}

func EaseInBack(p: Double) -> Double {
  return p * p * p - p * sin(p * M_PI)
}

func EaseOutBack(p: Double) -> Double {
  let f = (1 - p)
  return 1 - (f * f * f - f * sin(f * M_PI))
}

func EaseInOutBack(p: Double) -> Double {
  if (p < 0.5) {
    let f = 2 * p
    let a = sin(f * M_PI)
    return 0.5 * (f * f * f - f * a)
  } else {
    let f = (1 - (2*p - 1))
    let a = sin(f * M_PI)
    return 0.5 * (1 - (f * f * f - f * a)) + 0.5
  }
}

func EaseInBounce(p: Double) -> Double {
  return 1 - EaseOutBounce(1 - p)
}

func EaseOutBounce(p: Double) -> Double {
  if(p < 4/11.0) {
    return (121 * p * p)/16.0
  } else if(p < 8/11.0) {
    return (363/40.0 * p * p) - (99/10.0 * p) + 17/5.0
  } else if(p < 9/10.0) {
    return (4356/361.0 * p * p) - (35442/1805.0 * p) + 16061/1805.0
  } else {
    return (54/5.0 * p * p) - (513/25.0 * p) + 268/25.0
  }
}

func EaseInOutBounce(p: Double) -> Double {
  if(p < 0.5) {
    return 0.5 * EaseInBounce(p*2)
  } else {
    return 0.5 * EaseOutBounce(p * 2 - 1) + 0.5
  }
}

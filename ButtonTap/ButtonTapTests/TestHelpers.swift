//
//  TestHelpers.swift
//  ButtonTapTests
//
//  Created by Andreas Lüdemann on 23/04/2021.
//

import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

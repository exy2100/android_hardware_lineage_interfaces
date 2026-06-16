/*
 * Copyright (C) 2026 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

package vendor.lineage.health;

@Backing(type="int") @VintfStability
enum WirelessFastChargeMode {
    /**
     * The device supports no wireless fast charging.
     */
    NONE = 1 << 0,

    /**
     * The device supports wireless fast charging.
     */
    WIRELESS_FAST_CHARGE = 1 << 1,
}

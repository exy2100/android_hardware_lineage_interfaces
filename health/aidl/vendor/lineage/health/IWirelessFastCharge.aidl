/*
 * Copyright (C) 2023-2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

package vendor.lineage.health;

import vendor.lineage.health.WirelessFastChargeMode;

@VintfStability
interface IWirelessFastCharge {
    /**
     * Get supported fast charging modes.
     *
     * @return A bitmap of supported fast charging modes, specified by {@link WirelessFastChargeMode}
     *         If error:
     *         - Return service specific error with code STATUS_UNKNOWN
     */
    long getSupportedWirelessFastChargeModes();

    /**
     * Get the fast charging mode.
     *
     * @return Current fast charging mode, specified by {@link WirelessFastChargeMode}
     *         If error:
     *         - Return service specific error with code STATUS_UNKNOWN
     */
    WirelessFastChargeMode getWirelessFastChargeMode();

    /**
     * Set the fast charging mode.
     *
     * @return Current fast charging mode, specified by {@link WirelessFastChargeMode}
     *         If error:
     *         - Return exception with code EX_ILLEGAL_STATE
     *           if the value can't be determined from the driver.
     *         - Return service specific error with code STATUS_UNKNOWN
     *           for other errors.
     */
    WirelessFastChargeMode setWirelessFastChargeMode(WirelessFastChargeMode mode);
}

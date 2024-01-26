package org.ton.contract.wallet;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.CurrencyCollection;
import org.ton.block.MsgAddressInt;
import org.ton.block.StateInit;
import org.ton.cell.Cell;
/* compiled from: WalletTransfer.kt */
/* loaded from: classes6.dex */
public final class WalletTransfer {
    private final Cell body;
    private final boolean bounceable;
    private final CurrencyCollection coins;
    private final MsgAddressInt destination;
    private final int sendMode;
    private final StateInit stateInit;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletTransfer) {
            WalletTransfer walletTransfer = (WalletTransfer) obj;
            return Intrinsics.areEqual(this.destination, walletTransfer.destination) && this.bounceable == walletTransfer.bounceable && Intrinsics.areEqual(this.coins, walletTransfer.coins) && this.sendMode == walletTransfer.sendMode && Intrinsics.areEqual(this.body, walletTransfer.body) && Intrinsics.areEqual(this.stateInit, walletTransfer.stateInit);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.destination.hashCode() * 31;
        boolean z = this.bounceable;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int hashCode2 = (((((hashCode + i) * 31) + this.coins.hashCode()) * 31) + this.sendMode) * 31;
        Cell cell = this.body;
        int hashCode3 = (hashCode2 + (cell == null ? 0 : cell.hashCode())) * 31;
        StateInit stateInit = this.stateInit;
        return hashCode3 + (stateInit != null ? stateInit.hashCode() : 0);
    }

    public String toString() {
        return "WalletTransfer(destination=" + this.destination + ", bounceable=" + this.bounceable + ", coins=" + this.coins + ", sendMode=" + this.sendMode + ", body=" + this.body + ", stateInit=" + this.stateInit + ')';
    }

    public WalletTransfer(MsgAddressInt destination, boolean z, CurrencyCollection coins, int i, Cell cell, StateInit stateInit) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(coins, "coins");
        this.destination = destination;
        this.bounceable = z;
        this.coins = coins;
        this.sendMode = i;
        this.body = cell;
        this.stateInit = stateInit;
    }

    public final MsgAddressInt getDestination() {
        return this.destination;
    }

    public final boolean getBounceable() {
        return this.bounceable;
    }

    public final CurrencyCollection getCoins() {
        return this.coins;
    }

    public final int getSendMode() {
        return this.sendMode;
    }

    public final Cell getBody() {
        return this.body;
    }

    public final StateInit getStateInit() {
        return this.stateInit;
    }
}

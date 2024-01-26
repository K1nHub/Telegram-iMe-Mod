package org.ton.contract.wallet;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Coins;
import org.ton.block.CurrencyCollection;
import org.ton.block.ExtraCurrencyCollection;
import org.ton.block.MsgAddressInt;
import org.ton.block.StateInit;
import org.ton.block.VarUInteger;
import org.ton.cell.Cell;
import org.ton.hashmap.HashMapE;
/* compiled from: WalletTransfer.kt */
/* loaded from: classes6.dex */
public final class WalletTransferBuilder {
    private Cell body;
    public MsgAddressInt destination;
    private StateInit stateInit;
    private boolean bounceable = true;
    private CurrencyCollection currencyCollection = new CurrencyCollection(new Coins((VarUInteger) null, 1, (DefaultConstructorMarker) null), new ExtraCurrencyCollection((HashMapE) null, 1, (DefaultConstructorMarker) null));
    private int sendMode = 3;

    public final MsgAddressInt getDestination() {
        MsgAddressInt msgAddressInt = this.destination;
        if (msgAddressInt != null) {
            return msgAddressInt;
        }
        Intrinsics.throwUninitializedPropertyAccessException("destination");
        return null;
    }

    public final void setDestination(MsgAddressInt msgAddressInt) {
        Intrinsics.checkNotNullParameter(msgAddressInt, "<set-?>");
        this.destination = msgAddressInt;
    }

    public final void setCoins(Coins value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.currencyCollection = CurrencyCollection.copy$default(this.currencyCollection, value, null, 2, null);
    }

    public final void setBody(Cell cell) {
        this.body = cell;
    }

    public final WalletTransfer build() {
        return new WalletTransfer(getDestination(), this.bounceable, this.currencyCollection, this.sendMode, this.body, this.stateInit);
    }
}

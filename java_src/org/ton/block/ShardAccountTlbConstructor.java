package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Account;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShardAccount.kt */
/* loaded from: classes6.dex */
public final class ShardAccountTlbConstructor extends org.ton.tlb.TlbConstructor<ShardAccount> {
    public static final ShardAccountTlbConstructor INSTANCE = new ShardAccountTlbConstructor();

    private ShardAccountTlbConstructor() {
        super("account_descr$_ account:^Account last_trans_hash:bits256 last_trans_lt:uint64 = ShardAccount;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ShardAccount value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getAccount().toCell(Account.Companion));
        cellBuilder.storeBits(value.getLastTransHash());
        cellBuilder.mo5211storeUInt64VKZWuLQ(value.m5148getLastTransLtsVKNKU());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ShardAccount loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        Account.Companion companion = Account.Companion;
        return new ShardAccount(CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion), cellSlice.loadBits(256), cellSlice.mo5221loadUInt64sVKNKU(), null);
    }
}

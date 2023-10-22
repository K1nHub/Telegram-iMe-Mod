package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransactionDescr.kt */
/* loaded from: classes6.dex */
public final class TransactionDescrTlbCombinator extends TlbCombinator<TransactionDescr> {
    public static final TransactionDescrTlbCombinator INSTANCE = new TransactionDescrTlbCombinator();

    private TransactionDescrTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(TransactionDescr.class), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(TransOrd.class), TransOrd.Companion.tlbConstructor()), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(TransStorage.class), TransStorage.Companion.tlbConstructor()), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(TransTickTock.class), TransTickTock.Companion.tlbConstructor()), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(TransMergeInstall.class), TransMergeInstall.Companion.tlbConstructor()), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(TransMergePrepare.class), TransMergePrepare.Companion.tlbConstructor()), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(TransSplitInstall.class), TransSplitInstall.Companion.tlbConstructor()), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(TransSplitPrepare.class), TransSplitPrepare.Companion.tlbConstructor()));
    }
}

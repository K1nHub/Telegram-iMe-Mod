package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoSignature.kt */
/* loaded from: classes6.dex */
public final class CryptoSignatureTlbCombinator extends TlbCombinator<CryptoSignature> {
    public static final CryptoSignatureTlbCombinator INSTANCE = new CryptoSignatureTlbCombinator();

    private CryptoSignatureTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(CryptoSignature.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(CryptoSignatureSimple.class), CryptoSignatureSimple.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(ChainedSignature.class), ChainedSignature.Companion));
    }
}

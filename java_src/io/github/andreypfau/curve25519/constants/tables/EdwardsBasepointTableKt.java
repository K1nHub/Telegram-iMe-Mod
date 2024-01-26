package io.github.andreypfau.curve25519.constants.tables;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
/* compiled from: EdwardsBasepointTable.kt */
/* loaded from: classes4.dex */
public final class EdwardsBasepointTableKt {
    private static final Lazy ED25519_BASEPOINT_TABLE$delegate;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<EdwardsBasepointTable>() { // from class: io.github.andreypfau.curve25519.constants.tables.EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final EdwardsBasepointTable invoke() {
                return EdwardsBasepointTable.Companion.unpack(PackedEdwardsBasepointTableKt.getPACKED_EDWARDS_BASEPOINT_TABLE());
            }
        });
        ED25519_BASEPOINT_TABLE$delegate = lazy;
    }

    public static final EdwardsBasepointTable getED25519_BASEPOINT_TABLE() {
        return (EdwardsBasepointTable) ED25519_BASEPOINT_TABLE$delegate.getValue();
    }
}

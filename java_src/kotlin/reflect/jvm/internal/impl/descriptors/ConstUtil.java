package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* compiled from: ConstUtil.kt */
/* loaded from: classes4.dex */
public final class ConstUtil {
    static {
        new ConstUtil();
    }

    private ConstUtil() {
    }

    public static final boolean canBeUsedForConstVal(KotlinType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return ConstUtilKt.canBeUsedForConstVal(type);
    }
}

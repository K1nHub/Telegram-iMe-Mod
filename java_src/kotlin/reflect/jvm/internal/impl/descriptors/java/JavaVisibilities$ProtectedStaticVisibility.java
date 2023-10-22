package kotlin.reflect.jvm.internal.impl.descriptors.java;

import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
/* compiled from: JavaVisibilities.kt */
/* loaded from: classes4.dex */
public final class JavaVisibilities$ProtectedStaticVisibility extends Visibility {
    public static final JavaVisibilities$ProtectedStaticVisibility INSTANCE = new JavaVisibilities$ProtectedStaticVisibility();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public String getInternalDisplayName() {
        return "protected/*protected static*/";
    }

    private JavaVisibilities$ProtectedStaticVisibility() {
        super("protected_static", true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public Visibility normalize() {
        return Visibilities.Protected.INSTANCE;
    }
}

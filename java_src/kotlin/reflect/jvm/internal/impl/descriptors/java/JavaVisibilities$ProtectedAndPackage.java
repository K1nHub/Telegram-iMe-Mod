package kotlin.reflect.jvm.internal.impl.descriptors.java;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
/* compiled from: JavaVisibilities.kt */
/* loaded from: classes4.dex */
public final class JavaVisibilities$ProtectedAndPackage extends Visibility {
    public static final JavaVisibilities$ProtectedAndPackage INSTANCE = new JavaVisibilities$ProtectedAndPackage();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public String getInternalDisplayName() {
        return "protected/*protected and package*/";
    }

    private JavaVisibilities$ProtectedAndPackage() {
        super("protected_and_package", true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public Integer compareTo(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        if (Intrinsics.areEqual(this, visibility)) {
            return 0;
        }
        if (visibility == Visibilities.Internal.INSTANCE) {
            return null;
        }
        return Integer.valueOf(Visibilities.INSTANCE.isPrivate(visibility) ? 1 : -1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public Visibility normalize() {
        return Visibilities.Protected.INSTANCE;
    }
}

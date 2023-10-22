package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;
/* compiled from: DescriptorRenderer.kt */
/* loaded from: classes4.dex */
public final class ExcludedTypeAnnotations {
    public static final ExcludedTypeAnnotations INSTANCE = new ExcludedTypeAnnotations();
    private static final Set<FqName> internalAnnotationsForResolve;

    private ExcludedTypeAnnotations() {
    }

    public final Set<FqName> getInternalAnnotationsForResolve() {
        return internalAnnotationsForResolve;
    }

    static {
        Set<FqName> of;
        of = SetsKt__SetsKt.setOf((Object[]) new FqName[]{new FqName("kotlin.internal.NoInfer"), new FqName("kotlin.internal.Exact")});
        internalAnnotationsForResolve = of;
    }
}

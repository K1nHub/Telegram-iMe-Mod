package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: DescriptorRenderer.kt */
/* loaded from: classes4.dex */
public enum DescriptorRendererModifier {
    VISIBILITY(true),
    MODALITY(true),
    OVERRIDE(true),
    ANNOTATIONS(false),
    INNER(true),
    MEMBER_KIND(true),
    DATA(true),
    INLINE(true),
    EXPECT(true),
    ACTUAL(true),
    CONST(true),
    LATEINIT(true),
    FUN(true),
    VALUE(true);
    
    public static final Set<DescriptorRendererModifier> ALL;
    public static final Set<DescriptorRendererModifier> ALL_EXCEPT_ANNOTATIONS;
    public static final Companion Companion = new Companion(null);
    private final boolean includeByDefault;

    DescriptorRendererModifier(boolean z) {
        this.includeByDefault = z;
    }

    static {
        Set<DescriptorRendererModifier> set;
        Set<DescriptorRendererModifier> set2;
        DescriptorRendererModifier[] values = values();
        ArrayList arrayList = new ArrayList();
        for (DescriptorRendererModifier descriptorRendererModifier : values) {
            if (descriptorRendererModifier.includeByDefault) {
                arrayList.add(descriptorRendererModifier);
            }
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        ALL_EXCEPT_ANNOTATIONS = set;
        set2 = ArraysKt___ArraysKt.toSet(values());
        ALL = set2;
    }

    /* compiled from: DescriptorRenderer.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}

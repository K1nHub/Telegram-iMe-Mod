package kotlinx.serialization.internal;

import java.util.List;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Caching.kt */
/* loaded from: classes4.dex */
public final class KTypeWrapper implements KType {
    private final KType origin;

    public KTypeWrapper(KType origin) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.origin = origin;
    }

    @Override // kotlin.reflect.KType
    public List<KTypeProjection> getArguments() {
        return this.origin.getArguments();
    }

    @Override // kotlin.reflect.KType
    public KClassifier getClassifier() {
        return this.origin.getClassifier();
    }

    @Override // kotlin.reflect.KType
    public boolean isMarkedNullable() {
        return this.origin.isMarkedNullable();
    }

    public boolean equals(Object obj) {
        if (obj != null && Intrinsics.areEqual(this.origin, obj)) {
            KClassifier classifier = getClassifier();
            if (classifier instanceof KClass) {
                KType kType = obj instanceof KType ? (KType) obj : null;
                KClassifier classifier2 = kType != null ? kType.getClassifier() : null;
                if (classifier2 != null && (classifier2 instanceof KClass)) {
                    return Intrinsics.areEqual(JvmClassMappingKt.getJavaClass((KClass) classifier), JvmClassMappingKt.getJavaClass((KClass) classifier2));
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return this.origin.hashCode();
    }

    public String toString() {
        return "KTypeWrapper: " + this.origin;
    }
}

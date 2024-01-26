package kotlin.reflect;

import java.util.List;
/* compiled from: KType.kt */
/* loaded from: classes4.dex */
public interface KType {
    List<KTypeProjection> getArguments();

    KClassifier getClassifier();

    boolean isMarkedNullable();
}

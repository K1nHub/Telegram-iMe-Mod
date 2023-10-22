package kotlin.reflect;
/* compiled from: KClass.kt */
/* loaded from: classes4.dex */
public interface KClass<T> extends KDeclarationContainer, KClassifier {
    String getQualifiedName();

    String getSimpleName();

    boolean isInstance(Object obj);
}

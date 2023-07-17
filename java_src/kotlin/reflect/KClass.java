package kotlin.reflect;
/* compiled from: KClass.kt */
/* loaded from: classes4.dex */
public interface KClass<T> extends KDeclarationContainer {
    String getSimpleName();

    boolean isInstance(Object obj);
}

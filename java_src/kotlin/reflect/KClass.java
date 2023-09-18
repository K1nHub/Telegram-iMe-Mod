package kotlin.reflect;
/* compiled from: KClass.kt */
/* loaded from: classes6.dex */
public interface KClass<T> extends KDeclarationContainer {
    String getSimpleName();

    boolean isInstance(Object obj);
}

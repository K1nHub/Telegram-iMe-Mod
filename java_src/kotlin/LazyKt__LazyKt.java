package kotlin;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Lazy.kt */
/* loaded from: classes4.dex */
public class LazyKt__LazyKt extends LazyKt__LazyJVMKt {
    public static <T> Lazy<T> lazyOf(T t) {
        return new InitializedLazyImpl(t);
    }
}

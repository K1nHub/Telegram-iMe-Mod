package p033j$.util.function;

import java.util.Objects;
import p033j$.util.concurrent.C2947a;
/* renamed from: j$.util.function.Consumer */
/* loaded from: classes2.dex */
public interface Consumer<T> {

    /* renamed from: j$.util.function.Consumer$-CC  reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static Consumer $default$andThen(Consumer consumer, Consumer consumer2) {
            Objects.requireNonNull(consumer2);
            return new C2947a(consumer, consumer2);
        }
    }

    void accept(T t);

    Consumer<T> andThen(Consumer<? super T> consumer);
}

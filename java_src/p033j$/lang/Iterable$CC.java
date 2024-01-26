package p033j$.lang;

import java.util.Objects;
import p033j$.util.DesugarCollections;
import p033j$.util.function.Consumer;
/* renamed from: j$.lang.Iterable$-CC  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class Iterable$CC {
    public static void $default$forEach(Iterable iterable, Consumer consumer) {
        if (DesugarCollections.f676a.isInstance(iterable)) {
            DesugarCollections.m693c(iterable, consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        for (Object obj : iterable) {
            consumer.accept(obj);
        }
    }
}

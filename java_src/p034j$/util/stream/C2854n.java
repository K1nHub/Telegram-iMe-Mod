package p034j$.util.stream;

import java.util.LinkedHashSet;
import java.util.Objects;
import p034j$.util.concurrent.C2580a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2854n implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2854n f998a = new C2854n();

    private /* synthetic */ C2854n() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo120b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2580a(this, biConsumer);
    }
}

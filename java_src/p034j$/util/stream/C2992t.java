package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2688f;
import p034j$.util.concurrent.C2682a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2992t implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2992t f1057a = new C2992t();

    private /* synthetic */ C2992t() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2688f) obj).m540b((C2688f) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2682a(this, biConsumer);
    }
}

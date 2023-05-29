package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2693f;
import p034j$.util.concurrent.C2687a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2997t implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2997t f1057a = new C2997t();

    private /* synthetic */ C2997t() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2693f) obj).m540b((C2693f) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2687a(this, biConsumer);
    }
}

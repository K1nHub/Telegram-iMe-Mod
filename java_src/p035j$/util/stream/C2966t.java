package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2662f;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2966t implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2966t f1059a = new C2966t();

    private /* synthetic */ C2966t() {
    }

    @Override // p035j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2662f) obj).m549b((C2662f) obj2);
    }

    @Override // p035j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo115b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2656a(this, biConsumer);
    }
}

package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2586f;
import p034j$.util.concurrent.C2580a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2890t implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2890t f1054a = new C2890t();

    private /* synthetic */ C2890t() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2586f) obj).m554b((C2586f) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo120b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2580a(this, biConsumer);
    }
}

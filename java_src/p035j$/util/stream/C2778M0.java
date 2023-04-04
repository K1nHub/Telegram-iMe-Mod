package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2689h;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2778M0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2778M0 f792a = new C2778M0();

    private /* synthetic */ C2778M0() {
    }

    @Override // p035j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2689h) obj).m545b((C2689h) obj2);
    }

    @Override // p035j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo115b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2656a(this, biConsumer);
    }
}

package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2688g;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2961s0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2961s0 f1049a = new C2961s0();

    private /* synthetic */ C2961s0() {
    }

    @Override // p035j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2688g) obj).m546b((C2688g) obj2);
    }

    @Override // p035j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo115b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2656a(this, biConsumer);
    }
}

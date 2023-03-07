package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2474g;
import p034j$.util.concurrent.C2442a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2747s0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2747s0 f1038a = new C2747s0();

    private /* synthetic */ C2747s0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2474g) obj).m552b((C2474g) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2442a(this, biConsumer);
    }
}

package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2675g;
import p034j$.util.concurrent.C2643a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2948s0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2948s0 f1044a = new C2948s0();

    private /* synthetic */ C2948s0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2675g) obj).m532b((C2675g) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo101b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2643a(this, biConsumer);
    }
}

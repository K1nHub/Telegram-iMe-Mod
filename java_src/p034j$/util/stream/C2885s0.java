package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2612g;
import p034j$.util.concurrent.C2580a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2885s0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2885s0 f1044a = new C2885s0();

    private /* synthetic */ C2885s0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2612g) obj).m551b((C2612g) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo120b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2580a(this, biConsumer);
    }
}

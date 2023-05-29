package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2719g;
import p034j$.util.concurrent.C2687a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2992s0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2992s0 f1047a = new C2992s0();

    private /* synthetic */ C2992s0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2719g) obj).m537b((C2719g) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2687a(this, biConsumer);
    }
}

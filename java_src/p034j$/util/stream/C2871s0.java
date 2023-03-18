package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2598g;
import p034j$.util.concurrent.C2566a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2871s0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2871s0 f1043a = new C2871s0();

    private /* synthetic */ C2871s0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2598g) obj).m552b((C2598g) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2566a(this, biConsumer);
    }
}

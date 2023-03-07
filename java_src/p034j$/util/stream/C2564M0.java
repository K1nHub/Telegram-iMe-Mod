package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2475h;
import p034j$.util.concurrent.C2442a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2564M0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2564M0 f781a = new C2564M0();

    private /* synthetic */ C2564M0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2475h) obj).m551b((C2475h) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2442a(this, biConsumer);
    }
}

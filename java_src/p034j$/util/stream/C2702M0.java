package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2613h;
import p034j$.util.concurrent.C2580a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2702M0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2702M0 f787a = new C2702M0();

    private /* synthetic */ C2702M0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2613h) obj).m550b((C2613h) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo120b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2580a(this, biConsumer);
    }
}

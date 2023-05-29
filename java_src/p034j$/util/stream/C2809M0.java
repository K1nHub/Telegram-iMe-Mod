package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2720h;
import p034j$.util.concurrent.C2687a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2809M0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2809M0 f790a = new C2809M0();

    private /* synthetic */ C2809M0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2720h) obj).m536b((C2720h) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2687a(this, biConsumer);
    }
}

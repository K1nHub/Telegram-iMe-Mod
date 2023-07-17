package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2841h;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2930M0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2930M0 f872a = new C2930M0();

    private /* synthetic */ C2930M0() {
    }

    @Override // p033j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2841h) obj).m536b((C2841h) obj2);
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2808a(this, biConsumer);
    }
}

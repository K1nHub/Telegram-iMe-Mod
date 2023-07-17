package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2814f;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3118t implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C3118t f1139a = new C3118t();

    private /* synthetic */ C3118t() {
    }

    @Override // p033j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2814f) obj).m540b((C2814f) obj2);
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2808a(this, biConsumer);
    }
}

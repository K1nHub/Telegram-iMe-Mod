package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2863B implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2863B f777a = new C2863B();

    private /* synthetic */ C2863B() {
    }

    @Override // p033j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        double[] dArr = (double[]) obj;
        double[] dArr2 = (double[]) obj2;
        AbstractC3070l.m377b(dArr, dArr2[0]);
        AbstractC3070l.m377b(dArr, dArr2[1]);
        dArr[2] = dArr[2] + dArr2[2];
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2808a(this, biConsumer);
    }
}
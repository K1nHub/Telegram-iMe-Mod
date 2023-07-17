package p033j$.util.stream;

import p033j$.util.function.InterfaceC2835u;
/* renamed from: j$.util.stream.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3130v implements InterfaceC2835u {

    /* renamed from: a */
    public static final /* synthetic */ C3130v f1149a = new C3130v();

    private /* synthetic */ C3130v() {
    }

    @Override // p033j$.util.function.InterfaceC2835u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        dArr[2] = dArr[2] + 1.0d;
        AbstractC3070l.m377b(dArr, d);
        dArr[3] = dArr[3] + d;
    }
}

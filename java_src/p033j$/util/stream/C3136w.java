package p033j$.util.stream;

import p033j$.util.function.InterfaceC2835u;
/* renamed from: j$.util.stream.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3136w implements InterfaceC2835u {

    /* renamed from: a */
    public static final /* synthetic */ C3136w f1157a = new C3136w();

    private /* synthetic */ C3136w() {
    }

    @Override // p033j$.util.function.InterfaceC2835u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        AbstractC3070l.m377b(dArr, d);
        dArr[2] = dArr[2] + d;
    }
}

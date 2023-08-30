package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.V1 */
/* loaded from: classes2.dex */
public final class C3119V1 extends C3116U3 implements InterfaceC3265u1, InterfaceC3235p1 {
    @Override // p033j$.util.stream.C3116U3
    /* renamed from: B */
    public InterfaceC2992s.InterfaceC2993a mo492B() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Double d) {
        AbstractC3229o1.m377a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: D */
    public /* synthetic */ void mo340i(Double[] dArr, int i) {
        AbstractC3229o1.m370h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC3265u1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m364n(this, j, j2, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC3253s1
    /* renamed from: a */
    public InterfaceC2998A1 mo341a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3235p1, p033j$.util.stream.InterfaceC3253s1
    /* renamed from: a */
    public InterfaceC3265u1 mo341a() {
        return this;
    }

    @Override // p033j$.util.stream.C3116U3, p033j$.util.function.InterfaceC2959f
    public void accept(double d) {
        super.accept(d);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1, p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public InterfaceC3295z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.AbstractC3141Z3, p033j$.util.stream.InterfaceC3295z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        super.mo296d((double[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3, p033j$.util.stream.InterfaceC3295z1
    /* renamed from: e */
    public Object mo295e() {
        return (double[]) super.mo295e();
    }

    @Override // p033j$.util.stream.AbstractC3141Z3, p033j$.util.stream.InterfaceC3295z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        super.mo294g((InterfaceC2959f) obj);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        clear();
        m476x(j);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m371g(this, interfaceC2966m);
    }

    @Override // p033j$.util.stream.C3116U3, p033j$.util.stream.AbstractC3141Z3, java.lang.Iterable, p033j$.lang.InterfaceC2866e
    public InterfaceC3299t spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2998A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C3116U3, p033j$.util.stream.AbstractC3141Z3, java.lang.Iterable, p033j$.lang.InterfaceC2866e
    public InterfaceC2992s spliterator() {
        return super.spliterator();
    }
}

package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2970q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.n2 */
/* loaded from: classes2.dex */
public final class C3224n2 extends C3136Y3 implements InterfaceC3289y1, InterfaceC3247r1 {
    @Override // p033j$.util.stream.C3136Y3
    /* renamed from: B */
    public InterfaceC2992s.InterfaceC2995c mo385B() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Long l) {
        AbstractC3229o1.m375c(this, l);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: D */
    public /* synthetic */ void mo340i(Long[] lArr, int i) {
        AbstractC3229o1.m368j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC3289y1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m362p(this, j, j2, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC3253s1
    /* renamed from: a */
    public InterfaceC2998A1 mo341a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3247r1, p033j$.util.stream.InterfaceC3253s1
    /* renamed from: a */
    public InterfaceC3289y1 mo341a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.C3136Y3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        super.accept(j);
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
        super.mo296d((long[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3, p033j$.util.stream.InterfaceC3295z1
    /* renamed from: e */
    public Object mo295e() {
        return (long[]) super.mo295e();
    }

    @Override // p033j$.util.stream.AbstractC3141Z3, p033j$.util.stream.InterfaceC3295z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        super.mo294g((InterfaceC2970q) obj);
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

    @Override // p033j$.util.stream.C3136Y3, p033j$.util.stream.AbstractC3141Z3, java.lang.Iterable, p033j$.lang.InterfaceC2866e
    public InterfaceC3299t spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2998A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C3136Y3, p033j$.util.stream.AbstractC3141Z3, java.lang.Iterable, p033j$.lang.InterfaceC2866e
    public InterfaceC2992s spliterator() {
        return super.spliterator();
    }
}

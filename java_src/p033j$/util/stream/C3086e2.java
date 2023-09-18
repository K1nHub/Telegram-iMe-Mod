package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e2 */
/* loaded from: classes2.dex */
public final class C3086e2 extends C3042W3 implements InterfaceC3193w1, InterfaceC3157q1 {
    @Override // p033j$.util.stream.C3042W3
    /* renamed from: B */
    public InterfaceC2908s.InterfaceC2910b mo433B() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3145o1.m376b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: D */
    public /* synthetic */ void mo340i(Integer[] numArr, int i) {
        AbstractC3145o1.m369i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC3193w1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m363o(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC3169s1
    /* renamed from: a */
    public InterfaceC2914A1 mo341a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3157q1, p033j$.util.stream.InterfaceC3169s1
    /* renamed from: a */
    public InterfaceC3193w1 mo341a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.C3042W3, p033j$.util.function.InterfaceC2881l
    public void accept(int i) {
        super.accept(i);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        AbstractC3145o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public InterfaceC3211z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.AbstractC3057Z3, p033j$.util.stream.InterfaceC3211z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        super.mo296d((int[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC3057Z3, p033j$.util.stream.InterfaceC3211z1
    /* renamed from: e */
    public Object mo295e() {
        return (int[]) super.mo295e();
    }

    @Override // p033j$.util.stream.AbstractC3057Z3, p033j$.util.stream.InterfaceC3211z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        super.mo294g((InterfaceC2881l) obj);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        clear();
        m476x(j);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m371g(this, interfaceC2882m);
    }

    @Override // p033j$.util.stream.C3042W3, p033j$.util.stream.AbstractC3057Z3, java.lang.Iterable, p033j$.lang.InterfaceC2782e
    public InterfaceC3215t spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2914A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C3042W3, p033j$.util.stream.AbstractC3057Z3, java.lang.Iterable, p033j$.lang.InterfaceC2782e
    public InterfaceC2908s spliterator() {
        return super.spliterator();
    }
}

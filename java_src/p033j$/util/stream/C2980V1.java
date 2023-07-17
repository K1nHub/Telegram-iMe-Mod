package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.V1 */
/* loaded from: classes2.dex */
public final class C2980V1 extends C2977U3 implements InterfaceC3126u1, InterfaceC3096p1 {
    @Override // p033j$.util.stream.C2977U3
    /* renamed from: B */
    public InterfaceC2853s.InterfaceC2854a mo474B() {
        return super.spliterator();
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m359a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: D */
    public /* synthetic */ void mo322i(Double[] dArr, int i) {
        AbstractC3090o1.m352h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC3126u1 mo318r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m346n(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public InterfaceC2859A1 mo323a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3096p1, p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public InterfaceC3126u1 mo323a() {
        return this;
    }

    @Override // p033j$.util.stream.C2977U3, p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        super.accept(d);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m356d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m355e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC3156z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.AbstractC3002Z3, p033j$.util.stream.InterfaceC3156z1
    /* renamed from: d */
    public void mo278d(Object obj, int i) {
        super.mo278d((double[]) obj, i);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3, p033j$.util.stream.InterfaceC3156z1
    /* renamed from: e */
    public Object mo277e() {
        return (double[]) super.mo277e();
    }

    @Override // p033j$.util.stream.AbstractC3002Z3, p033j$.util.stream.InterfaceC3156z1
    /* renamed from: g */
    public void mo276g(Object obj) {
        super.mo276g((InterfaceC2820f) obj);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        clear();
        m458x(j);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo319q(InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m353g(this, interfaceC2827m);
    }

    @Override // p033j$.util.stream.C2977U3, p033j$.util.stream.AbstractC3002Z3, java.lang.Iterable, p033j$.lang.InterfaceC2727e
    public InterfaceC3160t spliterator() {
        return super.spliterator();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p033j$.util.stream.C2977U3, p033j$.util.stream.AbstractC3002Z3, java.lang.Iterable, p033j$.lang.InterfaceC2727e
    public InterfaceC2853s spliterator() {
        return super.spliterator();
    }
}

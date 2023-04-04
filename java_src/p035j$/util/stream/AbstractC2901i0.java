package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.i0 */
/* loaded from: classes2.dex */
abstract class AbstractC2901i0 implements InterfaceC2794O4 {

    /* renamed from: a */
    boolean f967a;

    /* renamed from: b */
    Object f968b;

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        AbstractC2938o1.m365d(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f967a) {
            return;
        }
        this.f967a = true;
        this.f968b = obj;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public /* synthetic */ void mo306n(long j) {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public boolean mo305o() {
        return this.f967a;
    }
}

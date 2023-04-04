package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.stream.h3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2898h3 implements InterfaceC2922l3 {

    /* renamed from: a */
    protected final InterfaceC2928m3 f964a;

    public AbstractC2898h3(InterfaceC2928m3 interfaceC2928m3) {
        Objects.requireNonNull(interfaceC2928m3);
        this.f964a = interfaceC2928m3;
    }

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

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2938o1.m366c(this, l);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        this.f964a.mo330m();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public boolean mo305o() {
        return this.f964a.mo305o();
    }
}

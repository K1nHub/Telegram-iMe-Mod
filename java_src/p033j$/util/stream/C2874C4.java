package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2874C4 extends AbstractC2880D4 implements InterfaceC2853s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2874C4(InterfaceC2853s interfaceC2853s, long j, long j2) {
        super(interfaceC2853s, j, j2, 0L, Math.min(interfaceC2853s.estimateSize(), j2));
    }

    private C2874C4(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4) {
        super(interfaceC2853s, j, j2, j3, j4);
    }

    @Override // p033j$.util.stream.AbstractC2880D4
    /* renamed from: a */
    protected InterfaceC2853s mo281a(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4) {
        return new C2874C4(interfaceC2853s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f801a >= this.f805e) {
            return false;
        }
        while (true) {
            long j2 = this.f801a;
            j = this.f804d;
            if (j2 <= j) {
                break;
            }
            this.f803c.mo113b(C2868B4.f783a);
            this.f804d++;
        }
        if (j >= this.f805e) {
            return false;
        }
        this.f804d = j + 1;
        return this.f803c.mo113b(consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f801a;
        long j2 = this.f805e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f804d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f803c.estimateSize() + j3 <= this.f802b) {
            this.f803c.forEachRemaining(consumer);
            this.f804d = this.f805e;
            return;
        }
        while (this.f801a > this.f804d) {
            this.f803c.mo113b(C2862A4.f776a);
            this.f804d++;
        }
        while (this.f804d < this.f805e) {
            this.f803c.mo113b(consumer);
            this.f804d++;
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m606e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
    }
}

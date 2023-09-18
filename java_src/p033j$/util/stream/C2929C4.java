package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2929C4 extends AbstractC2935D4 implements InterfaceC2908s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2929C4(InterfaceC2908s interfaceC2908s, long j, long j2) {
        super(interfaceC2908s, j, j2, 0L, Math.min(interfaceC2908s.estimateSize(), j2));
    }

    private C2929C4(InterfaceC2908s interfaceC2908s, long j, long j2, long j3, long j4) {
        super(interfaceC2908s, j, j2, j3, j4);
    }

    @Override // p033j$.util.stream.AbstractC2935D4
    /* renamed from: a */
    protected InterfaceC2908s mo299a(InterfaceC2908s interfaceC2908s, long j, long j2, long j3, long j4) {
        return new C2929C4(interfaceC2908s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f805a >= this.f809e) {
            return false;
        }
        while (true) {
            long j2 = this.f805a;
            j = this.f808d;
            if (j2 <= j) {
                break;
            }
            this.f807c.mo131b(new Consumer() { // from class: j$.util.stream.B4
                @Override // p033j$.util.function.Consumer
                public final void accept(Object obj) {
                }

                @Override // p033j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer.CC.$default$andThen(this, consumer2);
                }
            });
            this.f808d++;
        }
        if (j >= this.f809e) {
            return false;
        }
        this.f808d = j + 1;
        return this.f807c.mo131b(consumer);
    }

    @Override // p033j$.util.InterfaceC2908s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f805a;
        long j2 = this.f809e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f808d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f807c.estimateSize() + j3 <= this.f806b) {
            this.f807c.forEachRemaining(consumer);
            this.f808d = this.f809e;
            return;
        }
        while (this.f805a > this.f808d) {
            this.f807c.mo131b(new Consumer() { // from class: j$.util.stream.A4
                @Override // p033j$.util.function.Consumer
                public final void accept(Object obj) {
                }

                @Override // p033j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer.CC.$default$andThen(this, consumer2);
                }
            });
            this.f808d++;
        }
        while (this.f808d < this.f809e) {
            this.f807c.mo131b(consumer);
            this.f808d++;
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2835a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }
}

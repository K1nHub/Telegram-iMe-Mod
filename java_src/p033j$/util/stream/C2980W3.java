package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2770F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2980W3 extends AbstractC2995Z3 implements InterfaceC2823l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2980W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2980W3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2995Z3, java.lang.Iterable, p033j$.lang.InterfaceC2671e
    /* renamed from: A */
    public Spliterator.InterfaceC2774b spliterator() {
        return new C2975V3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    public void accept(int i) {
        m520z();
        int i2 = this.f1067b;
        this.f1067b = i2 + 1;
        ((int[]) this.f1003e)[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC2995Z3
    /* renamed from: c */
    public Object mo528c(int i) {
        return new int[i];
    }

    @Override // p033j$.lang.InterfaceC2671e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2823l) {
            mo340g((InterfaceC2823l) consumer);
        } else if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2770F.m679g(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }

    @Override // p033j$.util.stream.AbstractC2995Z3
    /* renamed from: s */
    protected void mo527s(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2823l interfaceC2823l = (InterfaceC2823l) obj2;
        while (i < i2) {
            interfaceC2823l.accept(iArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2995Z3
    /* renamed from: t */
    protected int mo526t(Object obj) {
        return ((int[]) obj).length;
    }

    public String toString() {
        int[] iArr = (int[]) mo341e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1068c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2995Z3
    /* renamed from: y */
    protected Object[] mo521y(int i) {
        return new int[i];
    }
}

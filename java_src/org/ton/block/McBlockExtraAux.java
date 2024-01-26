package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.block.Just;
import org.ton.block.Nothing;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HmeEmpty;
import org.ton.hashmap.HmeRoot;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: McBlockExtra.kt */
@Serializable
/* loaded from: classes6.dex */
public final class McBlockExtraAux implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final Maybe<CellRef<InMsg>> mintMsg;
    private final HashMapE<CryptoSignaturePair> prevBlkSignatures;
    private final Maybe<CellRef<InMsg>> recoverCreateMsg;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof McBlockExtraAux) {
            McBlockExtraAux mcBlockExtraAux = (McBlockExtraAux) obj;
            return Intrinsics.areEqual(this.prevBlkSignatures, mcBlockExtraAux.prevBlkSignatures) && Intrinsics.areEqual(this.recoverCreateMsg, mcBlockExtraAux.recoverCreateMsg) && Intrinsics.areEqual(this.mintMsg, mcBlockExtraAux.mintMsg);
        }
        return false;
    }

    public int hashCode() {
        return (((this.prevBlkSignatures.hashCode() * 31) + this.recoverCreateMsg.hashCode()) * 31) + this.mintMsg.hashCode();
    }

    public /* synthetic */ McBlockExtraAux(int i, HashMapE hashMapE, Maybe maybe, Maybe maybe2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, McBlockExtraAux$$serializer.INSTANCE.getDescriptor());
        }
        this.prevBlkSignatures = hashMapE;
        this.recoverCreateMsg = maybe;
        this.mintMsg = maybe2;
    }

    public McBlockExtraAux(HashMapE<CryptoSignaturePair> prevBlkSignatures, Maybe<CellRef<InMsg>> recoverCreateMsg, Maybe<CellRef<InMsg>> mintMsg) {
        Intrinsics.checkNotNullParameter(prevBlkSignatures, "prevBlkSignatures");
        Intrinsics.checkNotNullParameter(recoverCreateMsg, "recoverCreateMsg");
        Intrinsics.checkNotNullParameter(mintMsg, "mintMsg");
        this.prevBlkSignatures = prevBlkSignatures;
        this.recoverCreateMsg = recoverCreateMsg;
        this.mintMsg = mintMsg;
    }

    public static final /* synthetic */ void write$Self(McBlockExtraAux mcBlockExtraAux, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], mcBlockExtraAux.prevBlkSignatures);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], mcBlockExtraAux.recoverCreateMsg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], mcBlockExtraAux.mintMsg);
    }

    public final HashMapE<CryptoSignaturePair> getPrevBlkSignatures() {
        return this.prevBlkSignatures;
    }

    public final Maybe<CellRef<InMsg>> getRecoverCreateMsg() {
        return this.recoverCreateMsg;
    }

    public final Maybe<CellRef<InMsg>> getMintMsg() {
        return this.mintMsg;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: McBlockExtra.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<McBlockExtraAux> {
        private final /* synthetic */ McBlockExtraAuxTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public McBlockExtraAux loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public McBlockExtraAux loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, McBlockExtraAux value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<McBlockExtraAux> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = McBlockExtraAuxTlbConstructor.INSTANCE;
        }

        public final KSerializer<McBlockExtraAux> serializer() {
            return McBlockExtraAux$$serializer.INSTANCE;
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HashMapE.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)};
        KSerializer[] kSerializerArr = {HmeEmpty.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), HmeRoot.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))};
        Annotation[] annotationArr = {new C7756x712f2ee6("@type")};
        KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(Maybe.class);
        KClass[] kClassArr2 = {Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)};
        Just.Companion companion = Just.Companion;
        Nothing.Companion companion2 = Nothing.Companion;
        $childSerializers = new KSerializer[]{new SealedClassSerializer("org.ton.hashmap.HashMapE", orCreateKotlinClass, kClassArr, kSerializerArr, annotationArr), new SealedClassSerializer("org.ton.block.Maybe", orCreateKotlinClass2, kClassArr2, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7756x712f2ee6("@type")}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7756x712f2ee6("@type")})};
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("prev_blk_signatures", this.prevBlkSignatures);
        open.field("recover_create_msg", this.recoverCreateMsg);
        open.field("mint_msg", this.mintMsg);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}

package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
/* compiled from: CollectionSerializers.kt */
/* loaded from: classes4.dex */
public abstract class AbstractCollectionSerializer<Element, Collection, Builder> implements KSerializer<Collection> {
    public /* synthetic */ AbstractCollectionSerializer(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    protected abstract Builder builder();

    protected abstract int builderSize(Builder builder);

    protected abstract void checkCapacity(Builder builder, int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Iterator<Element> collectionIterator(Collection collection);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int collectionSize(Collection collection);

    protected abstract void readAll(CompositeDecoder compositeDecoder, Builder builder, int i, int i2);

    protected abstract void readElement(CompositeDecoder compositeDecoder, int i, Builder builder, boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Builder toBuilder(Collection collection);

    protected abstract Collection toResult(Builder builder);

    private AbstractCollectionSerializer() {
    }

    public final Collection merge(Decoder decoder, Collection collection) {
        Builder builder;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (collection == null || (builder = toBuilder(collection)) == null) {
            builder = builder();
        }
        int builderSize = builderSize(builder);
        CompositeDecoder beginStructure = decoder.beginStructure(getDescriptor());
        if (!beginStructure.decodeSequentially()) {
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex == -1) {
                    break;
                }
                readElement$default(this, beginStructure, builderSize + decodeElementIndex, builder, false, 8, null);
            }
        } else {
            readAll(beginStructure, builder, builderSize, readSize(beginStructure, builder));
        }
        beginStructure.endStructure(getDescriptor());
        return toResult(builder);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Collection deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return merge(decoder, null);
    }

    private final int readSize(CompositeDecoder compositeDecoder, Builder builder) {
        int decodeCollectionSize = compositeDecoder.decodeCollectionSize(getDescriptor());
        checkCapacity(builder, decodeCollectionSize);
        return decodeCollectionSize;
    }

    public static /* synthetic */ void readElement$default(AbstractCollectionSerializer abstractCollectionSerializer, CompositeDecoder compositeDecoder, int i, Object obj, boolean z, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
        }
        if ((i2 & 8) != 0) {
            z = true;
        }
        abstractCollectionSerializer.readElement(compositeDecoder, i, obj, z);
    }
}

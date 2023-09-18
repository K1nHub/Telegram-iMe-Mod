package io.grpc.protobuf.lite;

import com.google.common.base.Preconditions;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Parser;
import io.grpc.KnownLength;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* loaded from: classes6.dex */
public final class ProtoLiteUtils {
    static volatile ExtensionRegistryLite globalRegistry = ExtensionRegistryLite.getEmptyRegistry();

    public static <T extends MessageLite> MethodDescriptor.Marshaller<T> marshaller(T t) {
        return new MessageMarshaller(t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        Preconditions.checkNotNull(inputStream, "inputStream cannot be null!");
        Preconditions.checkNotNull(outputStream, "outputStream cannot be null!");
        byte[] bArr = new byte[8192];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    /* loaded from: classes6.dex */
    private static final class MessageMarshaller<T extends MessageLite> implements MethodDescriptor.Marshaller {
        private static final ThreadLocal<Reference<byte[]>> bufs = new ThreadLocal<>();
        private final T defaultInstance;
        private final Parser<T> parser;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.grpc.MethodDescriptor.Marshaller
        public /* bridge */ /* synthetic */ InputStream stream(Object obj) {
            return stream((MessageMarshaller<T>) ((MessageLite) obj));
        }

        MessageMarshaller(T t) {
            this.defaultInstance = t;
            this.parser = (Parser<T>) t.getParserForType();
        }

        public InputStream stream(T t) {
            return new ProtoInputStream(t, this.parser);
        }

        @Override // io.grpc.MethodDescriptor.Marshaller
        public T parse(InputStream inputStream) {
            byte[] bArr;
            if ((inputStream instanceof ProtoInputStream) && ((ProtoInputStream) inputStream).parser() == this.parser) {
                try {
                    return (T) ((ProtoInputStream) inputStream).message();
                } catch (IllegalStateException unused) {
                }
            }
            CodedInputStream codedInputStream = null;
            try {
                if (inputStream instanceof KnownLength) {
                    int available = inputStream.available();
                    if (available > 0 && available <= 4194304) {
                        ThreadLocal<Reference<byte[]>> threadLocal = bufs;
                        Reference<byte[]> reference = threadLocal.get();
                        if (reference == null || (bArr = reference.get()) == null || bArr.length < available) {
                            bArr = new byte[available];
                            threadLocal.set(new WeakReference(bArr));
                        }
                        int i = available;
                        while (i > 0) {
                            int read = inputStream.read(bArr, available - i, i);
                            if (read == -1) {
                                break;
                            }
                            i -= read;
                        }
                        if (i != 0) {
                            throw new RuntimeException("size inaccurate: " + available + " != " + (available - i));
                        }
                        codedInputStream = CodedInputStream.newInstance(bArr, 0, available);
                    } else if (available == 0) {
                        return this.defaultInstance;
                    }
                }
                if (codedInputStream == null) {
                    codedInputStream = CodedInputStream.newInstance(inputStream);
                }
                codedInputStream.setSizeLimit(Integer.MAX_VALUE);
                try {
                    return parseFrom(codedInputStream);
                } catch (InvalidProtocolBufferException e) {
                    throw Status.INTERNAL.withDescription("Invalid protobuf byte sequence").withCause(e).asRuntimeException();
                }
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }

        private T parseFrom(CodedInputStream codedInputStream) throws InvalidProtocolBufferException {
            T parseFrom = this.parser.parseFrom(codedInputStream, ProtoLiteUtils.globalRegistry);
            try {
                codedInputStream.checkLastTagWas(0);
                return parseFrom;
            } catch (InvalidProtocolBufferException e) {
                e.setUnfinishedMessage(parseFrom);
                throw e;
            }
        }
    }
}

package com.google.type;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
/* loaded from: classes3.dex */
public final class LatLng extends GeneratedMessageLite<LatLng, Builder> implements MessageLiteOrBuilder {
    private static final LatLng DEFAULT_INSTANCE;
    public static final int LATITUDE_FIELD_NUMBER = 1;
    public static final int LONGITUDE_FIELD_NUMBER = 2;
    private static volatile Parser<LatLng> PARSER;
    private double latitude_;
    private double longitude_;

    private LatLng() {
    }

    public double getLatitude() {
        return this.latitude_;
    }

    public double getLongitude() {
        return this.longitude_;
    }

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<LatLng, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C12151 c12151) {
            this();
        }

        private Builder() {
            super(LatLng.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.type.LatLng$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C12151 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f229xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f229xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f229xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f229xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f229xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f229xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f229xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f229xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C12151.f229xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new LatLng();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000", new Object[]{"latitude_", "longitude_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<LatLng> parser = PARSER;
                if (parser == null) {
                    synchronized (LatLng.class) {
                        parser = PARSER;
                        if (parser == null) {
                            parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                            PARSER = parser;
                        }
                    }
                }
                return parser;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    static {
        LatLng latLng = new LatLng();
        DEFAULT_INSTANCE = latLng;
        GeneratedMessageLite.registerDefaultInstance(LatLng.class, latLng);
    }

    public static LatLng getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}

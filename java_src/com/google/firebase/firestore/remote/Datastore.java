package com.google.firebase.firestore.remote;

import android.content.Context;
import android.os.Build;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.firestore.auth.CredentialsProvider;
import com.google.firebase.firestore.core.DatabaseInfo;
import com.google.firebase.firestore.remote.WatchStream;
import com.google.firebase.firestore.remote.WriteStream;
import com.google.firebase.firestore.util.AsyncQueue;
import io.grpc.Status;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import javax.net.ssl.SSLHandshakeException;
/* loaded from: classes3.dex */
public class Datastore {
    static final Set<String> WHITE_LISTED_HEADERS = new HashSet(Arrays.asList("date", "x-google-backends", "x-google-netmon-label", "x-google-service", "x-google-gfe-request-trace"));
    private final FirestoreChannel channel;
    private final RemoteSerializer serializer;
    private final AsyncQueue workerQueue;

    public Datastore(DatabaseInfo databaseInfo, AsyncQueue asyncQueue, CredentialsProvider credentialsProvider, Context context, GrpcMetadataProvider grpcMetadataProvider) {
        this.workerQueue = asyncQueue;
        this.serializer = new RemoteSerializer(databaseInfo.getDatabaseId());
        this.channel = initializeChannel(databaseInfo, asyncQueue, credentialsProvider, context, grpcMetadataProvider);
    }

    FirestoreChannel initializeChannel(DatabaseInfo databaseInfo, AsyncQueue asyncQueue, CredentialsProvider credentialsProvider, Context context, GrpcMetadataProvider grpcMetadataProvider) {
        return new FirestoreChannel(asyncQueue, context, credentialsProvider, databaseInfo, grpcMetadataProvider);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WatchStream createWatchStream(WatchStream.Callback callback) {
        return new WatchStream(this.channel, this.workerQueue, this.serializer, callback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WriteStream createWriteStream(WriteStream.Callback callback) {
        return new WriteStream(this.channel, this.workerQueue, this.serializer, callback);
    }

    public static boolean isPermanentError(Status status) {
        return isPermanentError(FirebaseFirestoreException.Code.fromValue(status.getCode().value()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.firestore.remote.Datastore$1 */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C10271 {

        /* renamed from: $SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code */
        static final /* synthetic */ int[] f186xf2f5b1d8;

        static {
            int[] iArr = new int[FirebaseFirestoreException.Code.values().length];
            f186xf2f5b1d8 = iArr;
            try {
                iArr[FirebaseFirestoreException.Code.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.CANCELLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.DEADLINE_EXCEEDED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.RESOURCE_EXHAUSTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.INTERNAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.UNAVAILABLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.UNAUTHENTICATED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.INVALID_ARGUMENT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.NOT_FOUND.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.ALREADY_EXISTS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.PERMISSION_DENIED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.FAILED_PRECONDITION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.ABORTED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.OUT_OF_RANGE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.UNIMPLEMENTED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f186xf2f5b1d8[FirebaseFirestoreException.Code.DATA_LOSS.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public static boolean isPermanentError(FirebaseFirestoreException.Code code) {
        switch (C10271.f186xf2f5b1d8[code.ordinal()]) {
            case 1:
                throw new IllegalArgumentException("Treated status OK as error");
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return false;
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                return true;
            default:
                throw new IllegalArgumentException("Unknown gRPC status code: " + code);
        }
    }

    public static boolean isMissingSslCiphers(Status status) {
        Status.Code code = status.getCode();
        Throwable cause = status.getCause();
        return Build.VERSION.SDK_INT < 21 && code.equals(Status.Code.UNAVAILABLE) && ((cause instanceof SSLHandshakeException) && cause.getMessage().contains("no ciphers available"));
    }

    public static boolean isPermanentWriteError(Status status) {
        return isPermanentError(status) && !status.getCode().equals(Status.Code.ABORTED);
    }
}

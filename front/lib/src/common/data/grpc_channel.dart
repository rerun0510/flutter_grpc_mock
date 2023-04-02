import 'package:grpc/grpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grpc_channel.g.dart';

@Riverpod(keepAlive: true)
ClientChannel grpcChannel(GrpcChannelRef ref) {
  final channel = ClientChannel(
    'localhost',
    port: 8080,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  ref.onDispose(channel.shutdown);

  return channel;
}

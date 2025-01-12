#include "base.h"
#include "dumper.h"

int debug = 0;
int main()
{

	Dumper& Dump = Dumper::GetInstance();
	uint64_t Base = 0;
    pidA = find_pid("com.tencent.tmgp.gnyx");
    Base = get_module_base("libUE4.so");

	try
	{
		Dump.Init(Base, Base + 0xd242180, Base + 0xd25c638 + 0x10);
	}
	catch (const char* error)
	{
		printf("%s\n", error);
		return -1;
	}

	Dump.Dump();

	return 0;
}